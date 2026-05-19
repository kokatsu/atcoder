import std;

void main() {
    int X;
    readfln("%d", X);

    int Q;
    readfln("%d", Q);

    RunningMedian rm;
    rm.insert(X);

    int[] R = new int[](Q);
    foreach (ref r; R) {
        int A, B;
        readfln("%d %d", A, B);

        rm.insert(A);
        rm.insert(B);

        r = rm.median;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;

}

struct RunningMedian {
    private BinaryHeap!(Array!int, "a < b") lower;
    private BinaryHeap!(Array!int, "a > b") upper;

    void insert(int x) {
        if (lower.empty || x <= lower.front) {
            lower.insert(x);
        }
        else {
            upper.insert(x);
        }

        if (lower.length > upper.length + 1) {
            upper.insert(lower.front);
            lower.removeFront;
        }
        else if (upper.length > lower.length) {
            lower.insert(upper.front);
            upper.removeFront;
        }
    }

    int median() {
        return lower.front;
    }
}
