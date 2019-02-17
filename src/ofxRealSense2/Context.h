#pragma once

#include <string>
#include <map>
#include <mutex>
#include "ofEvent.h"
#include "librealsense2/rs.hpp"
#include "Device.h"

namespace ofxRealSense2
{
    class Context
    {
    public:
        Context();
        ~Context();

        void setup(bool autoStart = true);
        void clear();

        void update();
        
        const std::map<std::string, std::shared_ptr<Device>> & getDevices() const;
        std::shared_ptr<Device> getDevice(const std::string & serialNumber) const;

        const rs2::context & getNativeContext() const;

    public:
        ofEvent<std::string> deviceAddedEvent;
        ofEvent<std::string> deviceRemovedEvent;

    private:
        void addDevice(rs2::device device);
        void removeDevices(const rs2::event_information & info);

    private:
        rs2::context context;
        std::mutex mutex;
        std::map<std::string, std::shared_ptr<Device>> devices;
        bool autoStart;
    };
}