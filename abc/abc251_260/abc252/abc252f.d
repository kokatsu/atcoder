import std;

void main() {
    long N, L;
    readf("%d %d\n", N, L);

    auto A = readln.chomp.split.to!(long[]);

    auto heap = A.heapify!"a > b";
    if (A.sum < L)
        heap.insert(L - A.sum);

    long res;
    while (heap.length > 1) {
        long s = heap.take(2).sum;
        res += s;
        heap.insert(s);
    }

    res.writeln;
}
