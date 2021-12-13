import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(long[]);
    
    auto B = A.dup;
    foreach (i, ref b; B) {
        b -= i + 1;
    }

    auto C = B.assumeSorted;

    foreach (_; 0 .. Q) {
        long K;
        readf("%d\n", K);

        auto l = C.lowerBound(K).length;

        long res = K;
        if (l > 0) {
            res += A[l-1] - B[l-1];
        }
        
        res.writeln;
    }
}