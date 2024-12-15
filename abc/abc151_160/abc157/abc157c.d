import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto digs = new int[](N);
    digs[] = -1;

    bool isOK = true;
    foreach (_; 0 .. M) {
        int s, c;
        readf("%d %d\n", s, c);

        --s;

        if ((N > 1 && s == 0 && c == 0) || (digs[s] >= 0 && digs[s] != c)) {
            isOK = false;
        }
        else {
            digs[s] = c;
        }
    }

    int res = -1;
    if (isOK) {
        res = 0;

        foreach (i, d; digs) {
            if (d == -1) {
                d = (N > 1 && i == 0 ? 1 : 0);
            }

            res = res * 10 + d;
        }
    }

    res.writeln;
}
