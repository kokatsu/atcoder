import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    bool isOK = true;
    auto list = new int[][](N + 1);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        list[A] ~= B;
        list[B] ~= A;

        if (list[A].length > 2 || list[B].length > 2) {
            isOK = false;
        }
    }

    auto seen = new bool[](N + 1);
    void dfs(int pos, int pre, ref bool flag) {
        seen[pos] = true;

        foreach (l; list[pos]) {
            if (l == pre) {
                continue;
            }

            if (seen[l]) {
                flag = false;
            }
            else {
                dfs(l, pos, flag);
            }
        }
    }

    foreach (i; 1 .. N + 1) {
        if (isOK && !seen[i]) {
            dfs(i, 0, isOK);
        }
    }

    writeln(isOK ? "Yes" : "No");
}
