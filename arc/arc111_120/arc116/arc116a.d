import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (i; 0 .. T) {
        long N;
        readf("%d\n", N);

        if (N % 2 == 0) {
            if (N % 4 == 0) {
                writeln("Even");
            }
            else {
                writeln("Same");
            }
        }
        else {
            writeln("Odd");
        }
    }
}