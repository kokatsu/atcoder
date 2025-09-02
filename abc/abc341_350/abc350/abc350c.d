import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] P = new int[](N + 1);
    foreach (i, a; A) {
        P[a] = i.to!int;
    }

    int[] L, R;
    foreach (i; 0 .. N - 1) {
        if (A[i] == i + 1) {
            continue;
        }

        L ~= i + 1;
        R ~= P[i + 1] + 1;
        P.swapAt(i + 1, A[i]);
        A.swapAt(i, P[A[i]]);
    }

    string res = L.length == 0 ? "0" : format("%d\n%(%(%d %d%)\n%)", L.length, zip(L, R));
    res.writeln;
}
