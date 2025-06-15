import std;

enum int[] X = iota(1, 10).array;

void main() {
    auto A = new int[][](9, 9);
    foreach (i; 0 .. 9) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    bool ok = true;
    foreach (i; 0 .. 9) {
        auto S = 9.iota.map!(j => A[i][j]).array;
        S.sort;
        ok &= S == X;

        auto T = 9.iota.map!(j => A[j][i]).array;
        T.sort;
        ok &= T == X;

        auto U = 9.iota.map!(j => A[i / 3 * 3 + j / 3][i % 3 * 3 + j % 3]).array;
        U.sort;
        ok &= U == X;
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
