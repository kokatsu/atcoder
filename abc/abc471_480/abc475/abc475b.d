import std;

enum int M = 1_000;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int X, Y, Z;
    foreach (i; 0 .. N) {
        int R = (A[i] + M - 1) / M * M - A[i];

        X += R % 10;
        Y += (R % 100) / 10;
        Z += R / 100;
    }

    string res = format("%d %d %d", X, Y, Z);
    res.writeln;
}
