import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    auto W = readln.chomp.split.to!(long[]);

    W[] *= 2;

    long[] A, B;
    foreach (i, s; S) {
        (s == '1' ? A : B) ~= W[i];
    }

    auto C = A.sort;
    auto D = B.sort;

    long res;
    foreach (a; A) {
        long num;
        num += C.upperBound(a - 1).length;
        num += D.lowerBound(a).length;

        res = max(res, num);
    }

    foreach (b; B) {
        long num;
        num += C.upperBound(b).length;
        num += D.lowerBound(b + 1).length;

        res = max(res, num);
    }

    res.writeln;
}
