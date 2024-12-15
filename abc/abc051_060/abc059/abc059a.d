import std;

void main() {
    auto s = readln.chomp.split;

    dchar[] res;
    foreach (x; s) {
        res ~= std.uni.toUpper(x[0]);
    }

    res.writeln;
}
