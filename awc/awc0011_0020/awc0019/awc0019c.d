import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort;

    int res = 1;
    foreach (i; 0 .. N - 1) {
        if (A[i] + 1 == A[i + 1]) {
            continue;
        }

        ++res;
    }

    res.writeln;
}
