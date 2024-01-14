import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = new int[][](1001);
    foreach (i, a; A) B[a] ~= i.to!int;

    int num = 1;
    auto res = new int[](N);
    foreach (b; B) {
        foreach (c; b) res[c] = num;
        num += b.length;
    }

    writefln("%(%s\n%)", res);
}