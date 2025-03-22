import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[int] B;
    foreach (a; A) {
        ++B[a];
    }

    int res = -1, X;
    foreach (i, a; A) {
        --B[a];
        if (B[a] == 0 && a > X) {
            res = i.to!int + 1;
            X = a;
        }
        ++B[a];
    }

    res.writeln;
}
