import std;

void main() {
    int N;
    readf("%d\n", N);

    auto tree = new int[][](N + 1);
    foreach (i; 0 .. N - 1) {
        int a, b;
        readf("%d %d\n", a, b);

        tree[a] ~= b;
        tree[b] ~= a;
    }

    bool isStar;
    foreach (i; 1 .. N + 1) {
        if (tree[i].length.to!int == N - 1) {
            isStar = true;
        }
    }

    if (isStar) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
