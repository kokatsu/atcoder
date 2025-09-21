import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    int[] A = readln.chomp.split.to!(int[]);

    int[] R = new int[](N), C = new int[](N);
    int res = -1, S, B;
    foreach (i, a; A) {
        int r = (a - 1) / N, c = (a - 1) % N;
        ++R[r], ++C[c];

        if (r == c) {
            ++S;
        }

        if (r + c == N - 1) {
            ++B;
        }

        if (res == -1 && max(R[r], C[c], S, B) == N) {
            res = i.to!int + 1;
        }
    }

    res.writeln;
}
