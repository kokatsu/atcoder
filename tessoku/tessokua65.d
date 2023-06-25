import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto tree = new int[][](N);
    foreach (i, a; A) {
        tree[a] ~= i.to!int + 1;
    }

    auto res = new int[](N);

    int f(int x) {
        foreach (t; tree[x]) {
            res[x] += f(t) + 1;
        }
        return res[x];
    }

    f(0);

    writefln("%(%s %)", res);
}