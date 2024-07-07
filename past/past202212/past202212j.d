import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    real xs, ys, xt, yt;
    readf("%f %f %f %f\n", xs, ys, xt, yt);

    if (xs > xt) {
        swap(xs, xt);
        swap(ys, yt);
    }

    bool f(real p, real q, real r) {
        if (q == 0.0) {
            real c = r / p;
            return (c < xs || xt < c);
        }

        real a = - p / q, b = r / q;
        real y1 = a * xs + b, y2 = a * xt + b;
        return (y1 < ys) == (y2 < yt);
    }

    int cnt;
    auto heap = new BinaryHeap!(Array!long, "a > b")();
    foreach (_; 0 .. N) {
        real P, Q, R;
        long W;
        readf("%f %f %f %d\n", P, Q, R, W);

        if (f(P, Q, R)) ++cnt;
        else heap.insert(W);
    }

    long res;
    foreach (i; 0 .. K-cnt) {
        if (heap.empty) break;

        res += heap.front;
        heap.popFront;
    }

    res.writeln;
}