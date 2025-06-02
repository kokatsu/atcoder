import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.assumeSorted;
    auto B = new int[](N);
    foreach (i; 0 .. N) {
        auto ub = S.upperBound(i);
        B[i] = ub.front - i - 1;
    }

    string res = format("%(%d\n%)", B);
    res.writeln;
}
