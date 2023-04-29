import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto C = readln.chomp.split.to!(int[]);

    foreach (i, c; C) {
        if (A + B == c) {
            writeln(i+1);
        }
    }
}