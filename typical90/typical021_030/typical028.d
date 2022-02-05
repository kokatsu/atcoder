import std;

void main() {
    int N;
    readf("%d\n", N);

    int limit = 1001;

    auto plane = new int[][](limit, limit);

    foreach (_; 0 .. N) {
        int lx, ly, rx, ry;
        readf("%d %d %d %d\n", lx, ly, rx, ry);

        ++plane[lx][ly], ++plane[rx][ry];
        --plane[lx][ry], --plane[rx][ly];
    }

    foreach (i; 0 .. limit) {
        foreach (j; 1 .. limit) {
            plane[i][j] += plane[i][j-1];
        }
    }

    foreach (i; 1 .. limit) {
        foreach (j; 0 .. limit) {
            plane[i][j] += plane[i-1][j];
        }
    }

    auto cnts = new int[](N+1);
    foreach (i; 0 .. limit) {
        foreach (j; 0 .. limit) {
            ++cnts[plane[i][j]];
        }
    }

    foreach (i; 1 .. N+1) {
        cnts[i].writeln;
    }
}