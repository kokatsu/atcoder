import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = new int[](N);
    auto A = new bool[][](N, 37);
    foreach (i; 0 .. N) {
        readf("%d\n", C[i]);
        auto R = readln.chomp.split.to!(int[]);
        foreach (r; R) {
            A[i][r] = true;
        }
    }

    int X;
    readf("%d\n", X);

    int M = int.max;
    int[] B;
    foreach (i; 0 .. N) {
        if (A[i][X]) {
            if (M > C[i]) {
                M = C[i];
                B = [i + 1];
            }
            else if (M == C[i]) {
                B ~= i + 1;
            }
        }
    }

    string res = format("%d\n%(%d %)", B.length, B);
    res.writeln;
}
