import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] P = readln.chomp.split.to!(int[]);

    size_t[] O = new size_t[](N + 1);
    foreach (i, p; P) {
        O[p] = i;
    }

    int Q;
    readf("%d\n", Q);

    int[] R = new int[](Q);
    foreach (i; 0 .. Q) {
        int A, B;
        readf("%d %d\n", A, B);

        R[i] = O[A] < O[B] ? A : B;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
