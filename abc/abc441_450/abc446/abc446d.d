import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[int] D;
    int res;
    foreach (a; A) {
        D[a] = max(D.get(a, 0), D.get(a - 1, 0) + 1);
        res = max(res, D[a]);
    }

    res.writeln;
}
