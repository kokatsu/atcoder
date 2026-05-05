import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    string name, kit;
    readfln("%s", name);
    readfln("%s", kit);

    int[] A = new int[](26), B = new int[](26);
    foreach (c; name) {
        ++A[c - 'A'];
    }

    foreach (c; kit) {
        ++B[c - 'A'];
    }

    int res;
    foreach (i; 0 .. 26) {
        if (B[i] == 0) {
            if (A[i] > 0) {
                res = -1;
                break;
            }
        }
        else {
            res = max(res, (A[i] + B[i] - 1) / B[i]);
        }
    }

    res.writeln;
}
