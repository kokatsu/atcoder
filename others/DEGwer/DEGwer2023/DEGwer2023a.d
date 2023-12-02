import std;

void main() {
    int N, K, T;
    readf("%d %d %d\n", N, K, T);

    auto A = readln.chomp.split.to!(int[]);

    auto C = new int[](N+1);
    foreach (a; A) ++C[a];

    int res, pos = int.min;
    foreach (i; 1 .. N+1) {
        if (C[i] == 0) continue;

        if (i < pos + T) {
            res += C[i];
            C[i] = 0;
        }
        else if (C[i] > 1) {
            res += C[i] - 1;
            C[i] = 1;
            pos = i;
        }
        else {
            pos = i;
        }
    }

    res.writeln;
}