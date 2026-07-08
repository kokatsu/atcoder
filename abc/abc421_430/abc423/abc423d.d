import std;

struct CustomersGroup {
    long customers, closingTime;
}

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] A, B, C;
    A.length = B.length = C.length = N;
    foreach (i; 0 .. N) {
        readfln("%d %d %d", A[i], B[i], C[i]);
    }

    auto heap = new BinaryHeap!(Array!CustomersGroup, (a, b) => a.closingTime > b.closingTime);

    long S, T;
    long[] R = new long[](N);
    foreach (i; 0 .. N) {
        while (!heap.empty && S + C[i] > K) {
            auto G = heap.front;
            heap.popFront;

            S -= G.customers;
            T = G.closingTime;
        }

        S += C[i];
        T = max(T, A[i]);
        R[i] = T;
        heap.insert(CustomersGroup(C[i], T + B[i]));
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
