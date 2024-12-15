import std;

void main() {
    int N, a, b;
    readf("%d\n%d %d\n", N, a, b);

    int K;
    readf("%d\n", K);

    auto P = readln.chomp.split.to!(int[]);

    bool[int] seen;
    seen[a] = true, seen[b] = true;

    bool isOK = true;
    foreach (p; P) {
        if (p in seen)
            isOK = false;
        seen[p] = true;
    }

    writeln(isOK ? "YES" : "NO");
}
