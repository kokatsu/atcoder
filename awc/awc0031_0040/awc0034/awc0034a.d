import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] C = readln.chomp.split.to!(int[]);

    int res;
    foreach (_; 0 .. M) {
        int T;
        readfln("%d", T);

        --T;

        if (C[T] > 0) {
            ++res;
            --C[T];
        }
    }

    res.writeln;
}
