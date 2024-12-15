import std;

struct S {
    long num;
    long color;
    bool isRow;
}

void main() {
    long H, W, C, Q;
    readf("%d %d %d %d\n", H, W, C, Q);

    auto list = new S[](Q);

    foreach (i; 0 .. Q) {
        long t, n, c;
        readf("%d %d %d\n", t, n, c);

        if (t == 1) {
            list[i] = S(n, c, true);
        }
        else {
            list[i] = S(n, c, false);
        }
    }

    auto color = new long[](C + 1);
    bool[long] row, col;
    long rcnt, ccnt;
    foreach_reverse (l; list) {
        if (l.isRow) {
            if (l.num in row) {
                continue;
            }

            row[l.num] = true;
            color[l.color] += W - ccnt;
            ++rcnt;
        }
        else {
            if (l.num in col) {
                continue;
            }

            col[l.num] = true;
            color[l.color] += H - rcnt;
            ++ccnt;
        }
    }

    foreach (i; 1 .. C + 1) {
        if (i == C) {
            writeln(color[i]);
        }
        else {
            write(color[i], " ");
        }
    }
}
