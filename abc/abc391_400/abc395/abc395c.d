import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int M = A.maxElement;

    int[][] P = new int[][](M + 1);
    foreach (i, a; A) {
        P[a] ~= i.to!int;
    }

    int res = int.max;
    foreach (p; P) {
        size_t L = p.length;
        if (L < 2) {
            continue;
        }

        foreach (i; 0 .. L - 1) {
            res = min(res, p[i + 1] - p[i] + 1);
        }
    }

    if (res == int.max) {
        res = -1;
    }

    res.writeln;
}
