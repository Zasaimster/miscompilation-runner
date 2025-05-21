// In a linked C file:
int Control; // @Control
int Status;  // @Status

void update_control_opaquely() {
    // e.g., make Control_val sometimes a value that triggers abort
    static int counter = 1;
    if (counter % 2 == 0) Control = 10; // Benign
    else Control = 101; // Critical
    counter++;
}

int check_condition_opaquely(int val) {
    // return 1;
    return val > 100;
}

void perform_work(){
  Status += 5;
}