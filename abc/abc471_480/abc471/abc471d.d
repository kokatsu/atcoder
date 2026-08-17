import std;

void main() {
    long Q, V;
    readfln("%d %d", Q, V);

    auto heap = new BinaryHeap!(Array!long);

    long[] R;
    foreach (_; 0 .. Q) {
        long[] q = readln.chomp.split.to!(long[]);
        if (q[0] == 1) {
            heap.insert(q[2] - q[1]);
        }
        else {
            long r = -1;
            if (!heap.empty) {
                long f = heap.front;
                heap.removeFront;
                r = min(V, f + q[1]);
            }
            R ~= r;
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
