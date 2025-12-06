import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int res;
    foreach (l; 0 .. N) {
        int D;

        foreach (r; l .. N) {
            D += A[r];
            if (A[l .. r + 1].all!(a => D % a != 0)) {
                ++res;
            }
        }
    }

    res.writeln;
}
