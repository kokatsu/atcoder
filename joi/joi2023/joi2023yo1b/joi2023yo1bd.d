import std;

void main() {
    int N, M;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    readf("%d\n", M);

    auto B = readln.chomp.split.to!(int[]);

    bool[int] dict;
    foreach (b; B) dict[b] = true;

    int res;
    foreach (a; A) {
        res = res + a in dict ? 0 : res + a;
    }

    res.writeln;
}