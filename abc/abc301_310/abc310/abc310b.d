import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto P = new int[](N);
    auto C = new int[][](N);
    foreach (i; 0 .. N) {
        auto A = readln.chomp.split.to!(int[]);
        P[i] = A[0];
        C[i] = A[2 .. $];
    }

    bool isOk;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (P[i] < P[j]) {
                continue;
            }

            if (!C[i].all!(c => C[j].canFind(c))) {
                continue;
            }

            isOk |= (P[i] > P[j] || C[j].any!(c => !C[i].canFind(c)));
        }
    }

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
