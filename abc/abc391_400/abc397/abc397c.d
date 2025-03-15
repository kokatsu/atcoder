import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[int] L, R;
    foreach (a; A) {
        ++L[a];
    }

    int res, l = L.length.to!int, r;
    foreach (a; A) {
        --L[a];
        if (L[a] == 0) {
            --l;
        }

        ++R[a];
        if (R[a] == 1) {
            ++r;
        }

        res = max(res, l + r);
    }

    res.writeln;
}
