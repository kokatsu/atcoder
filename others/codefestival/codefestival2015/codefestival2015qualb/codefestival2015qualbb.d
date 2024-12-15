import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int[int] dict;
    foreach (a; A)
        ++dict[a];

    int K = dict.byPair.maxElement!(p => p.value).key;

    string res = dict[K] * 2 > N ? K.to!string() : "?";
    res.writeln;
}
