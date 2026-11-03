import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int res = -1, M = A[0];
    foreach (i; 1 .. N) {
        if (M < A[i]) {
            res = i + 1;
            M = A[i];
        }
    }

    res.writeln;
}
