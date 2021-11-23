import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    A.sort;
    B.sort;

    long res;
    foreach (a, b; zip(A, B)) {
        res += abs(a-b);
    }

    res.writeln;
}