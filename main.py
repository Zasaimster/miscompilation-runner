import argparse
import subprocess

def parse_args():
   parser = argparse.ArgumentParser(description="Parse two filenames from command line.")
   parser.add_argument("file1", help="Path to the first file") # expect file extension to be .ll
   parser.add_argument("file2", help="Path to the second file")
   
   return parser.parse_args()    

def get_all_commands(file):
   filename = file[:-3]
   # clang -S -emit-llvm test3.c 
   llc_cmd = ['llc', '--march=arm64', '--mtriple=arm64-apple-darwin', file]
   generate_obj_file_cmd = ['clang', '-c', f'{filename}.s', '-o', f'{filename}.o']
   generate_executable_cmd = ['clang', f'{filename}.o', '-o', filename]
   execute_cmd = [f'./{filename}']

   return [llc_cmd, generate_obj_file_cmd, generate_executable_cmd, execute_cmd]

def run_cmds_for_each_file(file_cmds):
   results = []

   for cmds in file_cmds:
      for cmd in cmds:
         try:
            print(f"Running: {' '.join(cmd)}")
            if cmd[0][0:2] == './':
               res = subprocess.run(cmd, capture_output=True)
               print(res) # update to returncode or stdout check based on input programs
               # print(result.returncode)
               # print(f"Program response: {result.stdout.decode('utf-8')}")
               results.append(res)

               if res.returncode != 0:
                  print(f"Error running command: {' '.join(cmd)} with code {res.returncode}... TODO: handle error?")
            else:
               subprocess.run(cmd)
         except subprocess.CalledProcessError as e:
            print(f"Error running command: {' '.join(cmd)}")
            print("Error: ", e)
            return
      print()

   return results

def main():
   args = parse_args()
   # Get list of commands for the worklow per file
   file_cmds = [get_all_commands(args.file1), get_all_commands(args.file2)]
   # Run workflow and collect results
   results = run_cmds_for_each_file(file_cmds)

   # Evaluate results
   (res1, res2) = results
   print(f"Evaluating {res1.args[0]} and {res2.args[0]}")
   if res1.returncode == res2.returncode:
      print("Both programs returned the same code. :)")
   else:
      print("Programs returned different code. :(")
   
   if res1.stdout == res2.stdout:
      print("Both programs returned the same output. :)")
   else:
      # TODO: handle varying output. Look at causes for variation
         # @srand(), @rand(), @time()
      print("Programs returned different output. :(")

   # in the end, return code doesn't even matter because we would need better lexical parsing.
   # However, we can begin by treating same return code as a good sign.
   



if __name__ == "__main__":
   main()