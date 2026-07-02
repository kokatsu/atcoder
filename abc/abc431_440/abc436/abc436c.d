import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    bool[long] exists;

    int res;
    foreach (_; 0 .. M) {
        long R, C;
        readfln("%d %d", R, C);

        long P1 = R * N + C;
        long P2 = R * N + (C + 1);
        long P3 = (R + 1) * N + C;
        long P4 = (R + 1) * N + (C + 1);
        if (exists.get(P1, false) || exists.get(P2, false) || exists.get(P3, false) || exists.get(P4, false)) {
            continue;
        }

        ++res;
        exists[P1] = true;
        exists[P2] = true;
        exists[P3] = true;
        exists[P4] = true;
    }

    res.writeln;
}
