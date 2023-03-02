import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto P = readln.chomp.split.to!(int[]);
    auto Q = readln.chomp.split.to!(int[]);

    bool[int] list;
    foreach (p; P) list[K-p] = true;

    bool isOK;
    foreach (q; Q) {
        if (q in list) isOK = true;
    }

    writeln(isOK ? "Yes" : "No");
}