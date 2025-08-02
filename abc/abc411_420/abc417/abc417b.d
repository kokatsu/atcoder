import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int[int] C;
    foreach (b; B) {
        if (b !in C) {
            C[b] = 0;
        }
        ++C[b];
    }

    int[] D;
    foreach (a; A) {
        if (a in C && C[a] > 0) {
            --C[a];
            continue;
        }
        D ~= a;
    }

    if (D.empty) {
        return;
    }

    string res = format("%(%d %)", D);
    res.writeln;
}
