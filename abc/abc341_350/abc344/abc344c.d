import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int M;
    readf("%d\n", M);

    int[] B = readln.chomp.split.to!(int[]);

    int L;
    readf("%d\n", L);

    int[] C = readln.chomp.split.to!(int[]);

    int Q;
    readf("%d\n", Q);

    int[] X = readln.chomp.split.to!(int[]);

    bool[int] S;
    foreach (a; A) {
        foreach (b; B) {
            foreach (c; C) {
                S[a + b + c] = true;
            }
        }
    }

    string[] Y = X.map!(x => x in S ? "Yes" : "No").array;

    string res = format("%-(%s\n%)", Y);
    res.writeln;
}
