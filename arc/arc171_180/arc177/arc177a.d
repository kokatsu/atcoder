import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    int N;
    readfln("%d", N);

    int[] X = readln.chomp.split.to!(int[]);

    int[] C = [1, 5, 10, 50, 100, 500];
    bool ok = true;
    foreach (ref x; X) {
        foreach_reverse (i, c; C) {
            int d = min(A[i], x / c);
            x -= d * c;
            A[i] -= d;
        }

        if (x > 0) {
            ok = false;
            break;
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
