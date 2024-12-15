import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    foreach (a; A)
        res += max(0, a - 10);

    res.writeln;
}
