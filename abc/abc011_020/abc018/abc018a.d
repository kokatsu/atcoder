import std;

void main() {
    auto nums = new int[](3);
    foreach (i; 0 .. 3) {
        readf("%d\n", nums[i]);
    }

    auto temp = nums.dup;
    temp.sort!"a > b";

    auto res = iota(3).map!(a => temp.countUntil(nums[a]) + 1).array;

    writefln("%(%s\n%)", res);
}