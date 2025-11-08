import std;

void main() {
    int X;
    int N;
    readf("%d\n%d\n", X, N);

    int[] W = readln.chomp.split.to!(int[]);

    int Q;
    readf("%d\n", Q);

    int[] R = new int[](Q);
    foreach (i; 0 .. Q) {
        int P;
        readf("%d\n", P);

        --P;
        X += W[P];
        R[i] = X;
        W[P] *= -1;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
