import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto res = new int[](N);
    res[] = M;
    foreach (a; A)
        --res[a];

    foreach (r; res)
        r.writeln;
}
