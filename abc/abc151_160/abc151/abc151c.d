import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int AC, WA;
    auto isAC = new bool[](N + 1);
    auto cntWA = new int[](N + 1);
    foreach (_; 0 .. M) {
        int p;
        string S;
        readf("%d %s\n", p, S);

        if (isAC[p])
            continue;

        if (S == "AC")
            isAC[p] = true, ++AC, WA += cntWA[p];
        else
            ++cntWA[p];
    }

    writeln(AC, " ", WA);
}
