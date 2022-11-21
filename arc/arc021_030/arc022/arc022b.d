import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M = A.maxElement;

    auto contains = new bool[](M+1);
    int res, r;
    foreach (l; 0 .. N) {
        while (r < N && !contains[A[r]]) {
            contains[A[r++]] = true;
        }

        res = max(res, r-l);

        contains[A[l]] = false;
    }

    res.writeln;
}