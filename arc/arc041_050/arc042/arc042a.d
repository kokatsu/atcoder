import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = new int[](M);
    foreach (i; 0 .. M)
        readf("%d\n", a[i]);

    auto used = new bool[](N + 1);
    foreach_reverse (x; a) {
        if (used[x])
            continue;

        x.writeln;
        used[x] = true;
    }

    foreach (i; 1 .. N + 1) {
        if (used[i])
            continue;

        i.writeln;
    }
}
