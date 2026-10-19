import std;

void main() {
    int N, M, K, T;
    readfln("%d %d %d %d", N, M, K, T);

    int[] B = readln.chomp.split.to!(int[]);

    auto S = B.sort;

    string[] A = new string[](K);
    A[] = "NO";
    foreach (ref a; A) {
        int L, R;
        readfln("%d %d", L, R);

        int l = S.lowerBound(L).length.to!int;
        int r = S.upperBound(R).length.to!int;

        int C = M - l - r;
        if (C >= T) {
            a = "YES";
        }
    }

    string res = format("%-(%s\n%)", A);
    res.writeln;
}
