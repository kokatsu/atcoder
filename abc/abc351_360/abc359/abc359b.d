import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 1 .. N * 2 - 1) {
        if (A[i - 1] == A[i + 1])
            ++res;
    }

    res.writeln;
}
