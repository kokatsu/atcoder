import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[](N+2);
    A[1..N+1] = readln.chomp.split.to!(long[]);

    auto B = A.slide(2).map!(a => abs(a[0]-a[1])).array;

    auto T = B.sum;
    foreach (i; 1 .. N+1) {
        long res = T - B[i-1] - B[i] + abs(A[i-1]-A[i+1]);
        res.writeln;
    }
}