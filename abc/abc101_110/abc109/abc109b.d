import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] used;
    string pre;
    bool isOK = true;
    foreach (i; 0 .. N) {
        string W;
        readf("%s\n", W);

        if (i > 0)
            isOK &= (pre.back == W.front);
        if (W in used)
            isOK = false;

        used[W] = true;
        pre = W;
    }

    writeln(isOK ? "Yes" : "No");
}
