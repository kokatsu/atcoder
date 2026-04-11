import std;

void main() {
    int T, X;
    readfln("%d %d", T, X);

    int[] A = readln.chomp.split.to!(int[]);

    int[] t = [0], a = [A[0]];
    int P = A[0];
    foreach (i, x; A) {
        if (abs(A[i] - P) >= X) {
            t ~= i.to!int, a ~= A[i];
            P = A[i];
        }
    }

    string res = format("%(%(%d %d%)\n%)", zip(t, a));
    res.writeln;
}
