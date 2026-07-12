import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] R = new int[](M);
    R[] = -1;

    foreach (i; 0 .. N) {
        int C, S;
        readfln("%d %d", C, S);

        R[C - 1] = max(R[C - 1], S);
    }

    string res = format("%(%d %)", R);
    res.writeln;
}
