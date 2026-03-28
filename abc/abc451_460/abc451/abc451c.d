import std;

void main() {
    int Q;
    readfln("%d", Q);

    auto heap = new BinaryHeap!(Array!int, "a > b");

    int N;
    int[] R = new int[](Q);
    foreach (ref r; R) {
        int q, h;
        readfln("%d %d", q, h);

        if (q == 1) {
            heap.insert(h);
            ++N;
        }
        else {
            while (!heap.empty && heap.front <= h) {
                heap.removeFront;
                --N;
            }
        }

        r = N;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
